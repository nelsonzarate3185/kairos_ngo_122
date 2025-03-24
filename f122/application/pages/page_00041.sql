prompt --application/pages/page_00041
begin
--   Manifest
--     PAGE: 00041
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
 p_id=>41
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Cargar'
,p_alias=>'CARGAR'
,p_page_mode=>'MODAL'
,p_step_title=>'Cargar'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(40080790783263649)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230223125701'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48839769741239095)
,p_plug_name=>'<span style="display:none">Item</span>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'Style="background:#DCDCDC;width:100%;"'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(254060298723106032)
,p_name=>'Stock'
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.cod_sucursal, ',
'       v.desc_sucursal, ',
'       v.desc_rubro, ',
'       v.desc_division, ',
'       v.desc_categogira, ',
'       v.desc_familia, ',
'       v.marca,',
'       v.cod_art_corto, ',
'       v.cod_articulo, ',
'       v.desc_articulo, ',
'       v.cant_dispon, ',
'       v.volumen,',
'       (SELECT sum(cantidad)',
'          FROM V_PEDIDOS_STOCK_APEX s',
'         where s.cod_articulo=v.cod_articulo',
'           and s.autorizacion=''AUTORIZADO''',
'           AND SUCURSAL_PEDIDO=V.COD_SUCURSAL)PEDIDOS_AUTORIZADOS,',
'       (SELECT sum(cantidad)',
'          FROM V_PEDIDOS_STOCK_APEX s',
'         where s.cod_articulo=v.cod_articulo',
'           and s.autorizacion=''PENDIENTE''',
'           AND SUCURSAL_PEDIDO=V.COD_SUCURSAL) PEDIDOS_PENIENTES,',
'       (v.cant_dispon -nvl((SELECT sum(cantidad)',
'          FROM V_PEDIDOS_STOCK_APEX s',
'         where s.cod_articulo=v.cod_articulo',
'           and s.autorizacion in (''AUTORIZADO'',''PENDIENTE'')',
'           AND SUCURSAL_PEDIDO=V.COD_SUCURSAL),0) ) STOCK_DISPONIBLE',
'          from v_stock_apex v',
'WHERE ( COD_ARTICULO  = :P41_COD_ARTICULO )',
'/*AND COD_SUCURSAL IN (''190'',''275'',''07'',''01'',''209'',''262'',''02'')*/'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P41_COD_ARTICULO'
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
 p_id=>wwv_flow_imp.id(11333864221865268)
,p_query_column_id=>1
,p_column_alias=>'COD_SUCURSAL'
,p_column_display_sequence=>10
,p_column_heading=>'Cod Sucursal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11334263554865269)
,p_query_column_id=>2
,p_column_alias=>'DESC_SUCURSAL'
,p_column_display_sequence=>20
,p_column_heading=>'Desc Sucursal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11334602830865269)
,p_query_column_id=>3
,p_column_alias=>'DESC_RUBRO'
,p_column_display_sequence=>30
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11335062108865269)
,p_query_column_id=>4
,p_column_alias=>'DESC_DIVISION'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11335400903865269)
,p_query_column_id=>5
,p_column_alias=>'DESC_CATEGOGIRA'
,p_column_display_sequence=>50
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11335878684865270)
,p_query_column_id=>6
,p_column_alias=>'DESC_FAMILIA'
,p_column_display_sequence=>60
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11336218195865270)
,p_query_column_id=>7
,p_column_alias=>'MARCA'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11336681851865270)
,p_query_column_id=>8
,p_column_alias=>'COD_ART_CORTO'
,p_column_display_sequence=>80
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11337053956865270)
,p_query_column_id=>9
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>90
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11337469741865270)
,p_query_column_id=>10
,p_column_alias=>'DESC_ARTICULO'
,p_column_display_sequence=>100
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11337841103865271)
,p_query_column_id=>11
,p_column_alias=>'CANT_DISPON'
,p_column_display_sequence=>110
,p_column_heading=>'Cant Dispon'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11338260294865271)
,p_query_column_id=>12
,p_column_alias=>'VOLUMEN'
,p_column_display_sequence=>120
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11338632150865271)
,p_query_column_id=>13
,p_column_alias=>'PEDIDOS_AUTORIZADOS'
,p_column_display_sequence=>130
,p_column_heading=>'Pedidos Autorizados'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11339035254865271)
,p_query_column_id=>14
,p_column_alias=>'PEDIDOS_PENIENTES'
,p_column_display_sequence=>140
,p_column_heading=>'Pedidos Penientes'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11339443095865271)
,p_query_column_id=>15
,p_column_alias=>'STOCK_DISPONIBLE'
,p_column_display_sequence=>150
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11322338498865262)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_button_name=>'Cancelar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11322759379865262)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_button_name=>'Agregar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11348745208865277)
,p_branch_name=>'IR_A LA PAGINA_12'
,p_branch_action=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::P34_COD_ARTICULO:&P41_COD_ARTICULO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(11322759379865262)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11323149782865263)
,p_name=>'P41_COD_LISTA_PRECIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11323544562865263)
,p_name=>'P41_ID_PEDIDO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11323955584865263)
,p_name=>'P41_COD_CLIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11324354166865263)
,p_name=>'P41_COD_MONEDA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11324774785865264)
,p_name=>'P41_COD_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11325126615865264)
,p_name=>'P41_SER_PEDIDO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11325558605865264)
,p_name=>'P41_COD_CONDICION_VENTA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11325940382865264)
,p_name=>'P41_NRO_PEDIDO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11326332721865264)
,p_name=>'P41_COD_ART_CORTO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_prompt=>'Cod Art Corto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11326762968865264)
,p_name=>'P41_COD_ARTICULO'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_prompt=>'Codigo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.descripcion ||'' '' ||s.cod_articulo||'' '' ||S.COD_ART_CORTO DESCRIPCION ,s.cod_articulo',
'from st_articulos s, st_existencia_art e, sucursal_zona sz',
'where s.cod_empresa=''1''',
'and s.cod_empresa=e.cod_empresa',
'and s.cod_articulo=e.cod_articulo',
'and e.cod_sucursal=sz.cod_sucursal',
'AND COD_RUBRO=''PR''',
'',
'AND NVL(S.ESTADO,''A'') NOT IN (''I'',''N'')',
'AND S.PRECIO_BASE>0',
'and (s.COD_ART_CORTO = :P41_COD_ART_CORTO OR :P41_COD_ART_CORTO IS NULL)',
'',
'GROUP BY',
's.cod_articulo, s.descripcion, S.COD_ART_CORTO',
'ORDER BY DESCRIPCION '))
,p_lov_cascade_parent_items=>'P41_COD_ART_CORTO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11327139720865265)
,p_name=>'P41_DESC_ARTICULO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_prompt=>'Descripcion'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11327520760865265)
,p_name=>'P41_CANTIDAD'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_02=>'999999999999'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11327969202865265)
,p_name=>'P41_PRECIO_UNITARIO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_prompt=>'Precio Unitario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11328389328865265)
,p_name=>'P41_PORC_DESCUENTO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_prompt=>'Descuento %'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11328784914865265)
,p_name=>'P41_PORC_RECARGO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_prompt=>'% Recargo'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_02=>'100'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11329149890865266)
,p_name=>'P41_DESCUENTO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_prompt=>'Descuento:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11329592281865266)
,p_name=>'P41_RECARGO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_prompt=>'Recargo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11329933843865266)
,p_name=>'P41_TOTAL_IVA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_prompt=>'Total Iva'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11330382048865266)
,p_name=>'P41_MONTO_TOTAL'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_prompt=>'Monto Total'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11330726311865266)
,p_name=>'P41_TOTAL'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_prompt=>'Total'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11331121082865267)
,p_name=>'P41_COD_IVA'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11331551765865267)
,p_name=>'P41_PORC_IVA'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11331962353865267)
,p_name=>'P41_MONTO_GRAVADA_10'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11332380246865267)
,p_name=>'P41_MONTO_GRAVADA_5'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11332713445865267)
,p_name=>'P41_MONTO_EXENTA'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11333107464865268)
,p_name=>'P41_REQUIERE_ARMADO'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(48839769741239095)
,p_item_default=>'NO'
,p_prompt=>'Requiere Armado'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'SI'
,p_attribute_04=>'N'
,p_attribute_05=>'NO'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11339987560865272)
,p_validation_name=>'ARTICULO_OBLIGATORIO'
,p_validation_sequence=>10
,p_validation=>'P41_COD_ARTICULO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Es Obligatorio la carga del codigo'
,p_associated_item=>wwv_flow_imp.id(11326762968865264)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11340357898865272)
,p_validation_name=>'VALIDA_CANTIDAD'
,p_validation_sequence=>20
,p_validation=>'P41_CANTIDAD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'La cantidad no puede ser Nula'
,p_associated_item=>wwv_flow_imp.id(11327520760865265)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11340789199865272)
,p_validation_name=>'VALIDA_DESCUENTO'
,p_validation_sequence=>30
,p_validation=>'P41_PORC_DESCUENTO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'El descuento no puede ser nulo'
,p_associated_item=>wwv_flow_imp.id(11328389328865265)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11341177164865273)
,p_validation_name=>'mayor_30'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P41_PORC_DESCUENTO>80 THEN',
'RETURN FALSE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'El descuento no puede ser mayor a 80%'
,p_associated_item=>wwv_flow_imp.id(11328389328865265)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11341898519865273)
,p_name=>'obtiene_articulo'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_COD_ART_CORTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11342399654865274)
,p_event_id=>wwv_flow_imp.id(11341898519865273)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_COD_ARTICULO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo',
'from st_articulos a where cod_empresa=''1''',
'and cod_Art_corto=:P41_COD_ART_CORTO',
'and rownum=1'))
,p_attribute_07=>'P41_COD_ART_CORTO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11342843112865274)
,p_event_id=>wwv_flow_imp.id(11341898519865273)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(254060298723106032)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11343282041865274)
,p_name=>'OBTIENE_PRECIO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_COD_ARTICULO'
,p_condition_element=>'P41_COD_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11343742233865274)
,p_event_id=>wwv_flow_imp.id(11343282041865274)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT PRECIO_web_APEX(:P41_COD_ARTICULO,',
'                         :P41_COD_CLIENTE,',
'                         :P41_COD_LISTA_PRECIO,',
'                         0) PROCESO',
'    INTO :P41_PRECIO_UNITARIO',
'    FROM DUAL;',
'  ',
'  IF :P41_COD_SUCURSAL = ''105'' THEN',
'    BEGIN',
'        SELECT DESCUENTO',
'        INTO :P41_PORC_DESCUENTO',
'        FROM VT_OFERTAS_OUTLET',
'        WHERE COD_EMPRESA  = ''1''',
'        AND COD_ARTICULO = :P41_COD_ARTICULO;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            :P41_PORC_DESCUENTO := 0;',
'    END;',
'  END IF;',
'  IF :P41_COD_SUCURSAL = ''105.1'' THEN',
'    BEGIN',
'        SELECT DESCUENTO',
'        INTO :P41_PORC_DESCUENTO',
'        FROM VT_OFERTAS_feria',
'        WHERE COD_EMPRESA  = ''1''',
'        AND COD_ARTICULO = :P41_COD_ARTICULO;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            :P41_PORC_DESCUENTO := 0;',
'    END;',
'  END IF;',
'',
'  IF :P41_COD_ARTICULO = ''FLETE'' THEN',
'    begin',
'      select SUM(to_number(c007) + to_number(c008)) * 3 / 100',
'        INTO :P41_PRECIO_UNITARIO',
'        from apex_collections',
'       where collection_name = ''VT_PEDIDOS_DETALLE'';',
'    exception',
'      when others then',
'        :P41_PRECIO_UNITARIO := 0;',
'    end;',
'  ',
'  END IF;',
'END;',
'',
'IF :P41_PRECIO_UNITARIO>0 THEN',
' :P41_PRECIO_UNITARIO:=ceil(:P41_PRECIO_UNITARIO/100)*100;',
' END IF;'))
,p_attribute_02=>'P41_COD_LISTA_PRECIO,P41_COD_CLIENTE,P41_COD_ARTICULO,P41_COD_SUCURSAL'
,p_attribute_03=>'P41_PRECIO_UNITARIO,P41_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11344167255865275)
,p_name=>'OBTIENE_DESCRIPCION'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_COD_ARTICULO'
,p_condition_element=>'P41_COD_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11344699507865275)
,p_event_id=>wwv_flow_imp.id(11344167255865275)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_DESC_ARTICULO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion',
'from st_articulos a where cod_empresa=''1''',
'and cod_articulo=:P41_cod_Articulo',
'and rownum=1'))
,p_attribute_07=>'P41_COD_ARTICULO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11345044076865275)
,p_name=>'OBTIENE_DESCUENTO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_CANTIDAD'
,p_condition_element=>'P41_CANTIDAD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11345566950865275)
,p_event_id=>wwv_flow_imp.id(11345044076865275)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_PORC_DESCUENTO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'',
'',
'nvl(f_descuento_tipo_cliente(:P41_cod_cliente, :P41_cod_condicion_venta,:P41_cod_lista_precio,:P41_cantidad ,:P41_cod_articulo, NULL),0)',
'',
'',
'descuento',
'',
'from dual',
'WHERE NVL(:P41_COD_SUCURSAL,''01'') NOT IN (''105'',''105.1'')',
'UNION ALL',
'	 ',
'				 ',
'								SELECT descuento',
'							',
'								  FROM VT_ofertas_OUTLET ',
'								 WHERE COD_EMPRESA  = ''1''',
'									 AND COD_ARTICULO = :P41_COD_ARTICULO',
'									 AND FEC_CIERRE  >= TRUNC(SYSDATE)',
'								 	 and fec_alta    <= TRUNC(SYSDATE)',
'AND NVL(:P41_COD_SUCURSAL,''01'')   IN (''105'') ',
'UNION ALL',
'	 ',
'				 ',
'								SELECT descuento',
'							',
'								  FROM VT_OFERTAS_feria ',
'								 WHERE COD_EMPRESA  = ''1''',
'									 AND COD_ARTICULO = :P41_COD_ARTICULO',
'									 AND FEC_CIERRE  >= TRUNC(SYSDATE)',
'								 	 and fec_alta    <= TRUNC(SYSDATE)',
'AND NVL(:P41_COD_SUCURSAL,''01'')   IN (''105.1'') '))
,p_attribute_07=>'P41_COD_LISTA_PRECIO,P41_COD_ARTICULO,P41_COD_CLIENTE,P41_COD_CONDICION_VENTA,P41_CANTIDAD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11345912166865275)
,p_name=>'obtiene_monto_total'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_PORC_DESCUENTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11346477764865276)
,p_event_id=>wwv_flow_imp.id(11345912166865275)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  VTIPO_IMPUESTO VARCHAR2(10);  VCOD_IVA   VARCHAR2(10);  vporc_iva  NUMBER;  vfec_vigencia  DATE;  vporcentaje    NUMBER(8, 2);  vexento_ad     varchar2(5);  vregimen_turismo   varchar2(5);  VDECIMALES     NUMBER;  vexenta_regimen    number;',
'  vgravada_regimen   number;  vtotal_regimen number;  viva_regimen   number;  vrecargo   number;  vdescuento     NUMBER;  viva_rec   NUMBER;  viva_des   NUMBER;  vunitario  number;  VMONTO_TOTAL   NUMBER;',
'  VTOTAL_IVA     NUMBER;  VTOTAL     NUMBER;  vunitario_c_iva    number;  vmonto_total_c_iva number;',
'',
'BEGIN',
'  IF :P41_COD_MONEDA = ''1'' THEN',
'    VDECIMALES := 0;',
'  ELSE',
'    VDECIMALES := 2;',
'  END IF;',
'  Vdecimales:=50;',
'  BEGIN',
'    SELECT NVL(TIPO_IMPUESTO, ''G'')',
'      INTO VTIPO_IMPUESTO',
'      FROM CC_CLIENTES C',
'     WHERE C.COD_EMPRESA = ''1''',
'       AND C.COD_CLIENTE = :P41_COD_CLIENTE;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VTIPO_IMPUESTO := ''G'';',
'  END;',
'  BEGIN',
'    select a.cod_iva',
'      into vcod_iva',
'      from st_articulos a, st_iva i',
'     where a.cod_empresa = ''1''',
'       and a.cod_articulo = :P41_cod_articulo',
'       and a.cod_iva = i.cod_iva(+);',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VCOD_IVA := ''1'';',
'  END;',
'  BEGIN',
'    vporcentaje := vporc_iva;',
'    select round(nvl(porc_iva_venta, 0) / 100, 2),',
'           nvl(ind_exento_ad, ''N''),',
'           nvl(ind_regimen_turismo, ''N'')',
'      into vporc_iva, vexento_ad, vregimen_turismo',
'      from st_iva iva',
'     where iva.cod_iva = vcod_iva',
'       and iva.fec_vigencia <= sysdate',
'     order by fec_vigencia desc;',
'  EXCeption when others then null; end;',
'  IF nvl(VTIPO_IMPUESTO, ''G'') = ''E'' THEN',
'    vporcentaje := 0; vporc_iva   := 0;',
'  END IF;',
'  IF NVL(vtipo_impuesto, ''G'') = ''T'' AND nvl(vregimen_turismo, ''N'') = ''S'' AND',
'     nvl(vexento_ad, ''N'') <> ''S'' THEN',
'    vporcentaje := 0; vporc_iva   := 0;',
'  END IF;',
'  IF NVL(vtipo_impuesto, ''G'') = ''T'' AND nvl(vregimen_turismo, ''N'') = ''S'' AND  nvl(vexento_ad, ''N'') = ''S'' THEN',
'    vporcentaje := 0; vporc_iva   := 0;',
'  END IF;',
'  if nvl(Vporc_iva, 0) = 0 then',
'    vunitario := round(nvl(:P41_precio_unitario, 0), nvl(Vdecimales, 0));',
'  else',
'    vunitario := round(nvl(:P41_precio_unitario, 0) / (1 + (nvl(Vporc_iva, 0))), nvl(Vdecimales, 0));',
'  ',
'  end if;',
'  ',
'  vdescuento   := vunitario * :P41_CANTIDAD * (:P41_PORC_DESCUENTO / 100);',
'  vrecargo     := NVL(vunitario * :P41_CANTIDAD * (:P41_PORC_recargo / 100),0);',
'  VMONTO_TOTAL := round((VUNITARIO * :P41_CANTIDAD) - nvl(vdescuento, 0) + nvl(vrecargo, 0), nvl(Vdecimales, 0));',
'  VTOTAL_IVA   := round(VMONTO_TOTAL * VPORC_IVA, nvl(Vdecimales, 0));',
'  ',
'  IF NVL(vtipo_impuesto, ''G'') = ''T'' AND nvl(vregimen_turismo, ''N'') = ''S'' AND',
'     nvl(vexento_ad, ''N'') <> ''S'' then',
'    vtotal_regimen := nvl(vmonto_total, 0) + nvl(vtotal_iva, 0);',
'    vgravada_regimen :=0; ',
'    vexenta_regimen:=vtotal_regimen;',
'   ',
'     vgravada_regimen:=0;',
'              viva_regimen:=  0 ; ',
'    Vmonto_total := round(nvl(vgravada_regimen, 0) +',
'                          nvl(vexenta_regimen, 0),',
'                          nvl(vdecimales, 0));',
'    Vtotal_iva   := round(nvl(viva_regimen, 0), nvl(vdecimales, 0));',
'  ',
'  END IF;',
'IF :P41_COD_MONEDA = ''1'' THEN',
'    VDECIMALES := 0;',
'  ELSE',
'    VDECIMALES := 2;',
'  END IF;',
'  :P41_DESCUENTO   := ROUND(NVL(VDESCUENTO, 0), nvl(vdecimales, 0));',
'  :P41_PORC_IVA    := VPORC_IVA;',
'  :P41_RECARGO     := NVL(VRECARGO, 0);',
'  :P41_COD_IVA     := VCOD_IVA;',
'  :P41_MONTO_TOTAL := ROUND(VMONTO_TOTAL, nvl(vdecimales, 0));',
'  :P41_TOTAL_IVA   := ROUND(VTOTAL_IVA, nvl(vdecimales, 0));',
'  :P41_TOTAL       := ROUND(VMONTO_TOTAL + VTOTAL_IVA, nvl(vdecimales, 0));',
'END;',
''))
,p_attribute_02=>'P41_COD_ARTICULO,P41_PORC_DESCUENTO,P41_CANTIDAD,P41_PRECIO_UNITARIO,P41_COD_MONEDA,P41_PORC_RECARGO'
,p_attribute_03=>'P41_TOTAL_IVA,P41_MONTO_TOTAL,P41_TOTAL,P41_COD_IVA,P41_PORC_IVA,P41_DESCUENTO,P41_RECARGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11346938641865276)
,p_event_id=>wwv_flow_imp.id(11345912166865275)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_MONTO_GRAVADA_10 NUMBER;',
'vporcentaje number;',
'VTIPO_IMPUESTO varchar2(100);',
'vregimen_turismo  varchar2(100);',
'vexento_ad varchar2(100);',
'vcod_iva varchar2(100); ',
'vporc_iva varchar2(100); ',
'BEGIN',
'',
' BEGIN',
'    SELECT NVL(TIPO_IMPUESTO, ''G'')',
'      INTO VTIPO_IMPUESTO',
'      FROM CC_CLIENTES C',
'     WHERE C.COD_EMPRESA = ''1''',
'       AND C.COD_CLIENTE = :P41_COD_CLIENTE;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VTIPO_IMPUESTO := ''G'';',
'  END;',
'',
'bEGIN',
'    select a.cod_iva',
'      into vcod_iva',
'      from st_articulos a, st_iva i',
'     where a.cod_empresa = ''1''',
'       and a.cod_articulo = :P41_cod_articulo',
'       and a.cod_iva = i.cod_iva(+);',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VCOD_IVA := ''1'';',
'  END;',
'  BEGIN',
'    vporcentaje := vporc_iva;',
'    ',
'    select round(nvl(porc_iva_venta, 0) / 100, 2),',
'           nvl(ind_exento_ad, ''N''),',
'           nvl(ind_regimen_turismo, ''N'')',
'      into vporc_iva, vexento_ad, vregimen_turismo',
'      from st_iva iva',
'     where iva.cod_iva = vcod_iva',
'       and iva.fec_vigencia <= sysdate',
'     order by fec_vigencia desc;',
'  EXCeption when others then null; end;',
'',
'',
' IF NVL(vtipo_impuesto, ''G'') = ''T'' AND nvl(vregimen_turismo, ''N'') = ''S'' AND',
'     nvl(vexento_ad, ''N'') <> ''S'' THEN',
'',
'  --if (:P41_PORC_IVA = round(1.5 / 100, 2) or :P41_PORC_IVA = round(1.5 / 100, 3)) then',
'    :P41_MONTO_GRAVADA_10 := :P41_TOTAL_IVA * 10;',
'    V_MONTO_GRAVADA_10 := :P41_TOTAL_IVA * 10;',
'    :P41_MONTO_GRAVADA_5  := 0;',
'    :P41_MONTO_exenta     := :P41_MONTO_TOTAL - V_MONTO_GRAVADA_10;',
'  elsif :P41_TOTAL_IVA > 0 and :P41_PORC_IVA = 0.1 then',
'    :P41_MONTO_GRAVADA_10 := :P41_monto_total;',
'    :P41_MONTO_GRAVADA_5  := 0;',
'    :P41_MONTO_exenta     := 0;',
'  elsif :P41_TOTAL_IVA > 0 and :P41_PORC_IVA = 0.01 then',
'    :P41_MONTO_GRAVADA_10 := 0;',
'    V_MONTO_GRAVADA_10:=0;',
'    :P41_MONTO_GRAVADA_5  := :P41_monto_total;',
'    :P41_MONTO_exenta     := :P41_monto_total - V_MONTO_GRAVADA_10;',
'  elsif nvl(:P41_TOTAL_IVA, 0) = 0 and :P41_PORC_IVA = 0 then',
'    :P41_MONTO_GRAVADA_10 := 0;',
'    :P41_MONTO_GRAVADA_5  := 0;',
'    :P41_MONTO_exenta     := :P41_monto_total;',
'  end if;',
'END;'))
,p_attribute_02=>'P41_MONTO_TOTAL,P41_TOTAL_IVA,P41_TOTAL,P41_COD_IVA,P41_PORC_IVA,P41_COD_ARTICULO,P41_COD_CLIENTE'
,p_attribute_03=>'P41_MONTO_GRAVADA_10,P41_MONTO_GRAVADA_5,P41_MONTO_EXENTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11347374601865276)
,p_name=>'OBTIENE_MONTO_RECARGO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_PORC_RECARGO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11347819947865276)
,p_event_id=>wwv_flow_imp.id(11347374601865276)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'VTIPO_IMPUESTO VARCHAR2(10);',
'VCOD_IVA VARCHAR2(10);',
'     vporc_iva       NUMBER;',
'     vfec_vigencia DATE;',
'     vporcentaje   NUMBER(8,2);',
'     vexento_ad varchar2(5);',
'     vregimen_turismo       varchar2(5);',
'     VDECIMALES NUMBER;',
'      vexenta_regimen number;',
'  vgravada_regimen       number;',
'  vtotal_regimen number;',
'  viva_regimen  number;',
'  vrecargo number;',
'  	vdescuento         NUMBER;',
'		',
'		viva_rec           NUMBER;',
'		viva_des           NUMBER;',
'		vunitario          number;',
'                VMONTO_TOTAL NUMBER;',
'                VTOTAL_IVA NUMBER;',
'                VTOTAL NUMBER;',
'		vunitario_c_iva    number;',
'		vmonto_total_c_iva number;',
'',
'BEGIN',
'IF :P41_COD_MONEDA=''1'' THEN ',
'VDECIMALES:=0; ELSE VDECIMALES:=2; END IF;',
'BEGIN',
'SELECT  NVL(TIPO_IMPUESTO,''G'')',
' INTO VTIPO_IMPUESTO',
'FROM CC_CLIENTES C',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_CLIENTE=:P41_COD_CLIENTE;',
'EXCEPTION WHEN OTHERS THEN',
'VTIPO_IMPUESTO:=''G'';',
'END;',
'',
'BEGIN',
'     select',
'     ',
'            a.cod_iva',
'       into vcod_iva',
'       from st_articulos a, st_iva i',
'      where a.cod_empresa = ''1''',
'        and a.cod_articulo = :P41_cod_articulo',
'        and a.cod_iva = i.cod_iva (+);',
'        EXCEPTION WHEN OTHERS THEN',
'        VCOD_IVA:=''1'';',
'END;',
'',
'',
'   BEGIN',
'     vporcentaje := vporc_iva;',
'     select round(nvl( porc_iva_venta,0) / 100,2), nvl(ind_exento_ad,''N''),',
'      nvl(ind_regimen_turismo,''N'')',
'       into  vporc_iva, vexento_ad,vregimen_turismo',
'       from st_iva iva',
'      where iva.cod_iva = vcod_iva',
'        and iva.fec_vigencia <= sysdate ',
'      order by fec_vigencia desc;',
'      exception when others then null;',
'      end;',
'',
'IF nvl( VTIPO_IMPUESTO, ''G'' ) = ''E''   THEN',
'       vporcentaje := 0;',
'       vporc_iva := 0;',
'     END IF;',
'   ',
'      IF  NVL(vtipo_impuesto, ''G'' ) = ''T''  ',
'            AND  nvl(vregimen_turismo,''N'') = ''S''       THEN',
'      vporcentaje := 0;',
'       vporc_iva := 0;',
'      END IF;',
'',
'',
'	if nvl(Vporc_iva, 0) = 0 then',
'				vunitario := round(nvl(:P41_precio_unitario, 0),nvl(Vdecimales, 0));           ',
'		else		',
'				vunitario       := round(nvl(:P41_precio_unitario, 0) /(1 + (nvl(Vporc_iva, 0))), nvl(Vdecimales, 0));',
'				',
'		end if;',
'                ',
'                ',
'        vdescuento:= vunitario * :P41_CANTIDAD*(:P41_PORC_DESCUENTO/100);        ',
'        vrecargo:= NVL(vunitario * :P41_CANTIDAD*(:P41_PORC_recargo/100),0);        ',
'VMONTO_TOTAL :=(VUNITARIO*:P41_CANTIDAD)-nvl(vdescuento,0)+nvl(vrecargo,0);',
'VTOTAL_IVA:= VMONTO_TOTAL*VPORC_IVA;',
'	if :Vporc_iva in(round(1.5/100,3),round(1.5/100,2)) then',
'  vtotal_regimen :=nvl(vmonto_total, 0)+nvl(vtotal_iva, 0);',
'              vgravada_regimen:=0; ',
'              vexenta_regimen:=vtotal_regimen;',
'              vgravada_regimen:=0;',
'              viva_regimen:=  0 ;    ',
'              ',
'             Vmonto_total :=round(nvl(vgravada_regimen,0)+nvl(vexenta_regimen,0),nvl(vdecimales, 0));',
'                             Vtotal_iva:=  round(nvl(viva_regimen, 0) ,nvl(vdecimales, 0));     ',
'                           ',
'                   ',
'END IF;',
'',
':P41_DESCUENTO:=ROUND(NVL(VDESCUENTO,0),nvl(vdecimales, 0));',
':P41_PORC_IVA:=VPORC_IVA;',
':P41_RECARGO:=NVL(VRECARGO,0);',
':P41_COD_IVA:=VCOD_IVA;',
':P41_MONTO_TOTAL:= ROUND(VMONTO_TOTAL,nvl(vdecimales, 0));',
':P41_TOTAL_IVA := ROUND(VTOTAL_IVA,nvl(vdecimales, 0));',
':P41_TOTAL:= ROUND(VMONTO_TOTAL+VTOTAL_IVA,nvl(vdecimales, 0));',
'END;'))
,p_attribute_02=>'P41_COD_ARTICULO,P41_PORC_DESCUENTO,P41_CANTIDAD,P41_PRECIO_UNITARIO,P41_COD_MONEDA,P41_PORC_RECARGO'
,p_attribute_03=>'P41_TOTAL_IVA,P41_MONTO_TOTAL,P41_TOTAL,P41_COD_IVA,P41_PORC_IVA,P41_DESCUENTO,P41_RECARGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11348294245865276)
,p_name=>'New'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11341416434865273)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'COLLECTION_CARGA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P41_PRECIO_UNITARIO IS NOT NULL AND :P41_CANTIDAD IS NOT NULL AND :P41_COD_ARTICULO IS NOT NULL THEN',
'declare',
'    l_order_id    number;',
'    l_order_id_det    number;',
'    ',
'begin',
'     --create collections',
'    BEGIN',
'    SELECT MAX(seq_id)',
'     INTO l_order_id',
'    FROM apex_collections',
'    WHERE collection_name=''VT_PEDIDOS_CABECERA''',
'    AND ROWNUM=1;',
'    EXCEPTION WHEN OTHERS THEN ',
'     l_order_id := NULL ;',
'    END;',
'    IF l_order_id IS NULL THEN',
'  --  IF  apex_collection.collection_exists(p_collection_name => ''VT_PEDIDOS_CABECERA'') then',
'    --NULL;',
'   -- ELSE',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PEDIDOS_CABECERA'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PEDIDOS_DETALLE'');',
'    ',
'    apex_collection.add_member(',
'            p_collection_name => ''VT_PEDIDOS_CABECERA'',',
'            p_c001            => :P12_SER_COMPROBANTE, ',
'            p_c002            => :P12_NRO_COMPROBANTE, ',
'            p_c003            => :P12_COD_CLIENTE,',
'            p_c004            => :P12_NOM_CLIENTE,',
'            p_c005            => :P12_COD_SUCURSAL_DIST,',
'            p_c006            => :P12_LUGAR_ENTREGA,',
'            p_c007            => :P12_COD_VENDEDOR,',
'            p_c008            => :P12_COD_CONDICION_VENTA,',
'            p_c009            => :P12_COD_LISTA_PRECIO,',
'            p_c010            => :P12_ID_PEDIDO,',
'            p_c011            => :P12_cod_moneda,',
'            p_c012            => :P12_COD_FLETE,',
'            p_c013            => :P12_TIPO_ENTREGA,',
'            p_c014            => :P12_COMENTARIO,',
'            p_c015            => :P12_TIP_CAMBIO,',
'            p_c016            => :P12_TIP_CAMBIO_COMPRA   )  ;',
'        ',
'            ',
'    END IF;',
'    ',
'    ',
'',
'',
'        apex_collection.add_member(',
'            p_collection_name => ''VT_PEDIDOS_DETALLE'',',
'            p_c001            => :P12_SER_COMPROBANTE, ',
'            p_c002            => :P12_NRO_COMPROBANTE, ',
'            p_c003            => :P41_COD_ARTICULO,',
'            p_c004            => :P41_CANTIDAD,',
'            p_c005            => :P41_PRECIO_UNITARIO,',
'            p_c006            => :P41_PORC_DESCUENTO,',
'            p_c007            => :P41_TOTAL_IVA,',
'            p_c008            => :P41_MONTO_TOTAL,',
'            p_c009            => :P41_TOTAL,',
'            p_c010            => :P41_ID_PEDIDO,',
'            p_c011            => NULL,',
'            p_c012            => 0,',
'                p_c013            => null,',
'                p_c014            => :P41_PORC_RECARGO ,',
'                p_c015            => :P41_DESCUENTO ,',
'                p_c016            => :P41_RECARGO ,',
'                p_c017            => :P41_COD_IVA ,',
'                p_c018            => :P41_PORC_IVA ,',
'                p_c020            =>NVL( :P41_REQUIERE_ARMADO  ,''NO''),',
'',
'p_c021            => :P41_MONTO_GRAVADA_10,',
'p_c022            =>:P41_MONTO_GRAVADA_5,',
'p_c023            =>:P41_MONTO_EXENTA',
'',
'                                          ',
'                                          )  ;',
'                                          ',
' ',
' ',
'     BEGIN',
'    SELECT MAX(seq_id)',
'     INTO l_order_id_det',
'    FROM apex_collections',
'    WHERE collection_name=''VT_PEDIDOS_DETALLE'';',
'    EXCEPTION WHEN OTHERS THEN ',
'     l_order_id_DET := NULL ;',
'    END;',
'',
' ',
'',
'DECLARE CURSOR CCAB IS',
'SELECT COD_ARTICULO_PROMO, CANTIDAD_REGALO, DESCUENTO_PROMO,',
'',
'PRECIO_web(COD_ARTICULO_PROMO,:P41_COD_LISTA_PRECIO,  0        )precio_unitario,',
'',
'nvl(nvl(trunc(:P41_cantidad/nvl(CANTIDAD_MINIMA_COMPRA,1))*CANTIDAD_REGALO,:P41_cantidad),1)CANTIDAD, NRO_PROMO,',
'PRECIO_web(COD_ARTICULO_PROMO,:P41_COD_LISTA_PRECIO,  0)-',
'PRECIO_web(COD_ARTICULO_PROMO,:P41_COD_LISTA_PRECIO,  nvl(DESCUENTO_PROMO,   0  ))descuento_monto',
'',
'	FROM V_PROMOCIONES_APEX a',
'	WHERE A.COD_ARTICULO = :P41_COD_ARTICULO',
'        AND COD_ARTICULO_PROMO IS NOT NULL',
'        AND NVL(A.COD_LISTA_PRECIO,:P41_COD_LISTA_PRECIO)=:P41_COD_LISTA_PRECIO',
'        AND DESCUENTO_PROMO>99',
'        AND NVL(CANTIDAD_MINIMA_COMPRA,1)<=:P41_CANTIDAD',
'         and nvl(DESCUENTO_PRODUCTO,nvl(:P41_porc_descuento,0))=nvl(:P41_porc_descuento,0)',
'         ',
'  ',
'        ;',
'        BEGIN',
'        FOR X IN CCAB LOOP',
'        ',
'        apex_collection.add_member(',
'            p_collection_name => ''VT_PEDIDOS_DETALLE'',',
'            p_c001            => :P12_SER_COMPROBANTE, ',
'            p_c002            => :P12_NRO_COMPROBANTE, ',
'            p_c003            => X.COD_ARTICULO_PROMO,',
'            p_c004            => X.CANTIDAD,',
'            p_c005            => X.PRECIO_UNITARIO,',
'            p_c006            => X.DESCUENTO_PROMO,',
'            p_c007            => 0,',
'            p_c008            => 0,',
'            p_c009            => 0,',
'            p_c010            => :P41_ID_PEDIDO,',
'            p_c011            => :P41_COD_ARTICULO,',
'            p_c012            => l_order_id_det,',
'            p_c013    => x.nro_promo,           ',
'                p_c014            =>  0,',
'                p_c015            => x.descuento_monto ,',
'                p_c016            => 0 ,',
'                p_c017            => :P41_COD_IVA ,',
'                p_c018            => :P41_PORC_IVA ,',
'                p_c020            =>NVL( :P41_REQUIERE_ARMADO  ,''NO''),',
'',
'p_c021            => 0,',
'p_c022            =>0,',
'p_c023            =>0)  ;',
'                                     ',
'        ',
'        END LOOP;',
'       ',
'',
'END;',
'',
'',
'',
'-------------COMBOS--------------------------',
'',
'  DECLARE CURSOR CCAB IS ',
'  select  D.cod_articulo, :P41_CANTIDAD CANTIDAD_REGALO,:P41_PORC_DESCUENTO DESCUENTO_PROMO,',
'',
'PRECIO_web(D.cod_articulo,:P41_COD_LISTA_PRECIO, 0       )precio_unitario,',
'1 CANTIDAD_CMB, NULL NRO_PROMO,',
'PRECIO_web(A.COD_ARTICULO,:P41_COD_LISTA_PRECIO,  nvl(:P41_PORC_DESCUENTO,   0  ))descuento_monto ,',
'NVL(D.CANTIDAD ,1)CANTIDAD',
'             ',
'        from vt_combo_CAB c,   vt_combo_det d, st_articulos a, st_articulos a1',
'       where c.cod_empresa = ''1''',
'       and c.cod_empresa=d.cod_empResa',
'         and c.cod_combo=d.cod_combo ',
'         and d.cod_empresa=a.cod_empresa',
'         and d.cod_articulo=a.cod_articulo   ',
'         and d.cod_empresa=a1.cod_empresa',
'         and d.cod_articulo=a1.cod_articulo ',
'         and d.cod_articulo not in :P41_COD_ARTICULO  ',
'            and nvl(C.estado, ''S'') <> ''N''',
'            and c.cod_combo  in (select d1.cod_combo',
'            from vt_combo_det d1',
'            where d1.cod_empresa=d.cod_empresa',
'            and d1.cod_articulo=:P41_COD_ARTICULO',
'              and nvl(ind_no_combo,''N'')=''N'')',
'',
'        ;',
'',
'VUNITARIO NUMBER;',
'  vgravada_regimen       number;',
'  vtotal_regimen number;',
'  viva_regimen  number;',
'  V_MONTO_GRAVADA_10 NUMBER;',
'  vrecargo number;',
'  	vdescuento         NUMBER;',
'        VDECIMALES NUMBER;',
'        VMONTO_TOTAL NUMBER;',
'                VTOTAL_IVA NUMBER;',
'                VTOTAL NUMBER;',
'                  vexenta_regimen number;',
'                  VP41_MONTO_GRAVADA_10 NUMBER;',
'                  VP41_MONTO_GRAVADA_5 NUMBER;',
'                  VP41_MONTO_exenta NUMBER;',
'BEGIN ',
'FOR X IN CCAB LOOP',
'',
'IF :P41_COD_MONEDA=''1'' THEN ',
'VDECIMALES:=0; ELSE VDECIMALES:=2; END IF;',
'if nvl(:P41_porc_iva, 0) = 0 then',
'	vunitario := round(nvl(X.precio_unitario, 0),nvl(Vdecimales, 0));           ',
'else		',
'	vunitario       := round(nvl(X.precio_unitario, 0) /(1 + (nvl(:P41_porc_iva, 0))), nvl(Vdecimales, 0));',
'       end if;',
'',
'vdescuento:= vunitario * :P41_CANTIDAD* NVL(X.CANTIDAD,1)*(:P41_PORC_DESCUENTO/100);        ',
'        vrecargo:= NVL(vunitario * :P41_CANTIDAD* NVL(X.CANTIDAD,1)*(:P41_PORC_recargo/100),0);        ',
'VMONTO_TOTAL :=(VUNITARIO*:P41_CANTIDAD* NVL(X.CANTIDAD,1))-nvl(vdescuento,0)+nvl(vrecargo,0);',
'VTOTAL_IVA:= VMONTO_TOTAL*:P41_PORC_IVA;',
'	if :P41_porc_iva in(round(1.5/100,3),round(1.5/100,2)) then',
'',
'         ',
'   vtotal_regimen :=nvl(Vmonto_total, 0)+nvl(Vtotal_iva, 0);',
'              vgravada_regimen:= 0; ',
'              vexenta_regimen:=nvl(vtotal_regimen,0);',
'              vgravada_regimen:=0;',
'              viva_regimen:= 0 ;  ',
'    Vmonto_total := round(nvl(vgravada_regimen, 0) +',
'                          nvl(vexenta_regimen, 0),',
'                          nvl(vdecimales, 0));',
'    Vtotal_iva   := round(nvl(viva_regimen, 0), nvl(vdecimales, 0));   ',
'END IF;',
'if (:P41_PORC_IVA = round(1.5 / 100, 2) or :P41_PORC_IVA = round(1.5 / 100, 3)) then',
'    VP41_MONTO_GRAVADA_10 := 0;',
'    V_MONTO_GRAVADA_10 := 0;',
'    VP41_MONTO_GRAVADA_5  := 0;',
'    VP41_MONTO_exenta     := VMONTO_TOTAL - V_MONTO_GRAVADA_10;',
'  elsif Vtotal_iva > 0 and :P41_PORC_IVA = 0.1 then',
'    VP41_MONTO_GRAVADA_10 := VMONTO_TOTAL;',
'    VP41_MONTO_GRAVADA_5  := 0;',
'    VP41_MONTO_exenta     := 0;',
'  elsif Vtotal_iva > 0 and :P41_PORC_IVA = 0.01 then',
'    :P41_MONTO_GRAVADA_10 := 0;',
'    V_MONTO_GRAVADA_10:=0;',
'    VP41_MONTO_GRAVADA_5  := VMONTO_TOTAL;',
'    VP41_MONTO_exenta     := VMONTO_TOTAL - V_MONTO_GRAVADA_10;',
'  elsif nvl(Vtotal_iva, 0) = 0 and :P41_PORC_IVA = 0 then',
'    VP41_MONTO_GRAVADA_10 := 0;',
'    VP41_MONTO_GRAVADA_5  := 0;',
'    VP41_MONTO_exenta     := VMONTO_TOTAL;',
'  end if;',
'',
'',
'',
'        apex_collection.add_member(',
'            p_collection_name => ''VT_PEDIDOS_DETALLE'',',
'            p_c001            => :P12_SER_COMPROBANTE, ',
'            p_c002            => :P12_NRO_COMPROBANTE, ',
'            p_c003            => X.COD_ARTICULO,',
'            p_c004            => :P41_CANTIDAD * NVL(X.CANTIDAD,1),',
'            p_c005            => X.PRECIO_UNITARIO,',
'            p_c006            => :P41_PORC_DESCUENTO,',
'            p_c007            => ROUND(VTOTAL_IVA,nvl(vdecimales, 0)),',
'            p_c008            => ROUND(VMONTO_TOTAL,nvl(vdecimales, 0)),',
'            p_c009            =>  ROUND(VMONTO_TOTAL+VTOTAL_IVA,nvl(vdecimales, 0)),',
'            p_c010            => :P41_ID_PEDIDO,',
'            p_c011            => NULL,',
'            p_c012            => 0,',
'                p_c013            => null,',
'                p_c014            => :P41_PORC_RECARGO ,',
'                p_c015            => :P41_DESCUENTO ,',
'                p_c016            => :P41_RECARGO ,',
'                p_c017            => :P41_COD_IVA ,',
'                p_c018            => :P41_PORC_IVA ,',
'                 p_c020            =>NVL( :P41_REQUIERE_ARMADO  ,''NO''),',
'',
'p_c021            => ROUND(VP41_MONTO_GRAVADA_10,nvl(vdecimales, 0)),',
'p_c022            =>ROUND(VP41_MONTO_GRAVADA_5,nvl(vdecimales, 0)),',
'p_c023            =>ROUND(VP41_MONTO_exenta,nvl(vdecimales, 0))',
'                                          )  ;',
'                         ',
'END LOOP;',
'',
'',
'end;',
'',
'',
'',
'',
'end;',
'',
'ELSE',
'   apex_application.g_print_success_message := ''<span style="color:red">Error en la insercion del articulo.</span>'';  ',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11322759379865262)
);
wwv_flow_imp.component_end;
end;
/
