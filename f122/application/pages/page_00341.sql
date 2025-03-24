prompt --application/pages/page_00341
begin
--   Manifest
--     PAGE: 00341
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
 p_id=>341
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Consulta de Ordenes de Trabajo - CATIPOT'
,p_alias=>'CATIPOT'
,p_step_title=>'CATIPOT'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'EMILIANOP'
,p_last_upd_yyyymmddhh24miss=>'20230125121008'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(90902412844307140)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(90902779773307143)
,p_plug_name=>'GRUPO'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(90902836578307144)
,p_plug_name=>'ESTADOS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'       seq_id SEQ_ID_ESTADO,',
'       c001 ESTADO,',
'       c002 CANTIDAD,',
'       NULL DETALLES',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''ESTADOS_OT'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'ESTADOS'
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
 p_id=>wwv_flow_imp.id(92045680633373604)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>92045680633373604
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92045701237373605)
,p_db_column_name=>'ESTADO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92045845635373606)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92048774317373635)
,p_db_column_name=>'DETALLES'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Detalles'
,p_column_link=>'javascript:$s(''P341_SEQ_ID_DETALLE_ESTADO'',''#SEQ_ID_ESTADO#'');'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92049740173373645)
,p_db_column_name=>'SEQ_ID_ESTADO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Seq Id Estado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(92098255704816831)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'920983'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ESTADO:CANTIDAD:DETALLES:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(92049571542373643)
,p_plug_name=>'SEQ ID'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92047014643373618)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(90902779773307143)
,p_button_name=>'P341_BTN_EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92047685766373624)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_imp.id(90902779773307143)
,p_button_name=>'P341_BTN_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90902543986307141)
,p_name=>'P341_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(90902412844307140)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90902935445307145)
,p_name=>'P341_COD_PROVEEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(90902779773307143)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.cod_proveedor || '' - '' ||ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) D,',
'       c.cod_proveedor R--, ',
'       --c.cod_rubro',
'  FROM cm_proveedores c, personas p',
' WHERE c.cod_empresa = :P_COD_EMPRESA',
'   AND c.cod_rubro = ''88''',
'   AND c.cod_persona = p.cod_persona',
'   ',
'   UNION ALL',
'   SELECT c.cod_proveedor || '' - '' ||ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) D, ',
'          c.cod_proveedor R--,',
'          --''99''',
'  FROM cm_proveedores c, personas p',
' WHERE c.cod_empresa = :P_COD_EMPRESA',
'   AND nvl(c.cod_rubro,''99'') <> ''88''',
'   AND c.cod_persona = p.cod_persona',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90903087583307146)
,p_name=>'P341_COD_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(90902779773307143)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.cod_cliente || '' - '' || nombre D, c.cod_cliente R ',
'FROM cc_clientes c, personas p ',
'WHERE c.cod_empresa = :P_COD_EMPRESA',
'AND c.cod_persona = p.cod_persona',
'ORDER BY nombre'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90903175610307147)
,p_name=>'P341_COD_DISTRIBUIDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(90902779773307143)
,p_prompt=>'Distribuidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  c.cod_cliente || '' - '' || ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, ',
'        c.cod_cliente R',
'FROM cc_clientes c, personas p ',
'WHERE c.cod_empresa = :P_COD_EMPRESA',
'AND c.cod_persona = p.cod_persona',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90903235809307148)
,p_name=>'P341_COD_VENDEDOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(90902779773307143)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT v.cod_vendedor || '' - '' || nvl( ltrim( p.nombre ), ltrim( p.nomb_fantasia ) ) D, ',
'       v.cod_vendedor R',
'FROM fv_vendedores v, personas p ',
'WHERE v.cod_empresa = :P_COD_EMPRESA',
'AND v.cod_persona = p.cod_persona ',
'ORDER BY 2'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90903395496307149)
,p_name=>'P341_COD_ORIGEN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(90902779773307143)
,p_prompt=>'Origen'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_origen || '' - '' || descripcion D, ',
'       cod_origen R ',
'FROM vt_origenes ',
'WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92045302060373601)
,p_name=>'P341_COD_USUARIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(90902779773307143)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_usuario ',
'FROM usuarios ',
'WHERE cod_empresa = :P_COD_EMPRESA',
'AND cod_grupo IN (''SERTEC'', ''SERREP'',''SERTAU'',''CALL'')'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92045457165373602)
,p_name=>'P341_FAMILIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(90902779773307143)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_familia || '' - '' || descripcion D, ',
'       cod_familia R ',
'FROM st_familia ',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92045562086373603)
,p_name=>'P341_ARTICULO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(90902779773307143)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_articulo || '' - '' || descripcion D, ',
'       cod_articulo R',
'FROM st_articulos ',
'WHERE cod_empresa = :P_COD_EMPRESA',
'AND NVL(ESTADO,''S'')<>''I''',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92045922035373607)
,p_name=>'P341_FEC_CREACION_INI'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(90902779773307143)
,p_prompt=>unistr('Fecha Creaci\00F3n Inicial')
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92046032529373608)
,p_name=>'P341_FEC_CREACION_FIN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(90902779773307143)
,p_prompt=>unistr('Fecha Creaci\00F3n Final')
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92046132633373609)
,p_name=>'P341_TIP_FECHA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(90902779773307143)
,p_prompt=>'Tipo Fecha'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:1- D\00EDa;D,2- Mes;M,3- A\00F1o;A,4- General;G')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92046247419373610)
,p_name=>'P341_FEC_INI'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(90902779773307143)
,p_prompt=>'Fecha Inicial'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92046352990373611)
,p_name=>'P341_FEC_FIN'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(90902779773307143)
,p_prompt=>'Fecha Final'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92047361527373621)
,p_name=>'P341_TIP_FECHA_CREACION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(90902779773307143)
,p_prompt=>unistr('Tipo Fecha Creaci\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:1- D\00EDa;D,2- Mes;M,3- A\00F1o;A,4- General;G')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92049699029373644)
,p_name=>'P341_SEQ_ID_DETALLE_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(92049571542373643)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92050238051373650)
,p_name=>'P341_ESTADO_A_ENVIAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(90902412844307140)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92971702012193103)
,p_name=>'P341_URL_348'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(90902412844307140)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92047110909373619)
,p_name=>'DA_SETEAR_FECHAS'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P341_TIP_FECHA'
,p_condition_element=>'P341_TIP_FECHA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92047267674373620)
,p_event_id=>wwv_flow_imp.id(92047110909373619)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P341_TIP_FECHA = ''D'' THEN',
'      :P341_FEC_INI := sysdate;',
'      :P341_FEC_FIN := sysdate;',
'    ELSIF :P341_TIP_FECHA= ''M'' THEN',
'      :P341_FEC_INI := to_date( ''01/'' || to_char( sysdate, ''MM/YYYY'' ), ''DD/MM/YYYY'' );',
'      :P341_FEC_FIN := last_day( sysdate );',
'    ELSIF :P341_TIP_FECHA= ''A'' THEN',
'      :P341_FEC_INI := to_date( ''01/01/'' || to_char( sysdate, ''YYYY'' ), ''DD/MM/YYYY'' );',
'      :P341_FEC_FIN := to_date( ''31/12/'' || to_char( sysdate, ''YYYY'' ), ''DD/MM/YYYY'' );',
'    ELSIF :P341_TIP_FECHA= ''G'' THEN',
'      :P341_FEC_INI := to_date( ''01/01/1900'', ''DD/MM/YYYY'' );',
'      :P341_FEC_FIN := to_date( ''31/12/2099'', ''DD/MM/YYYY'' );',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P341_TIP_FECHA'
,p_attribute_03=>'P341_FEC_INI,P341_FEC_FIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92047499116373622)
,p_name=>'DA_SETEAR_FECHA_CREACION'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P341_TIP_FECHA_CREACION'
,p_condition_element=>'P341_TIP_FECHA_CREACION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92047545724373623)
,p_event_id=>wwv_flow_imp.id(92047499116373622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P341_TIP_FECHA_CREACION = ''D'' THEN',
'      :P341_FEC_CREACION_INI := sysdate;',
'      :P341_FEC_CREACION_FIN := sysdate;',
'    ELSIF :P341_TIP_FECHA_CREACION = ''M'' THEN',
'      :P341_FEC_CREACION_INI:= to_date( ''01/'' || to_char( sysdate, ''MM/YYYY'' ), ''DD/MM/YYYY'' );',
'      :P341_FEC_CREACION_FIN := last_day( sysdate );',
'    ELSIF :P341_TIP_FECHA_CREACION = ''A'' THEN',
'      :P341_FEC_CREACION_INI:= to_date( ''01/01/'' || to_char( sysdate, ''YYYY'' ), ''DD/MM/YYYY'' );',
'      :P341_FEC_CREACION_FIN := to_date( ''31/12/'' || to_char( sysdate, ''YYYY'' ), ''DD/MM/YYYY'' );',
'    ',
'    ELSIF :P341_TIP_FECHA_CREACION = ''G'' THEN',
'      :P341_FEC_CREACION_INI := to_date( ''01/01/1900'', ''DD/MM/YYYY'' );',
'      :P341_FEC_CREACION_FIN := to_date( ''31/12/2099'', ''DD/MM/YYYY'' );',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P341_TIP_FECHA_CREACION'
,p_attribute_03=>'P341_FEC_CREACION_INI,P341_FEC_CREACION_FIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92047825474373626)
,p_name=>'DA_LIMPIAR_CAMPOS'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(92047685766373624)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92047955520373627)
,p_event_id=>wwv_flow_imp.id(92047825474373626)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P341_COD_PROVEEDOR,P341_COD_CLIENTE,P341_COD_DISTRIBUIDOR,P341_COD_VENDEDOR,P341_COD_ORIGEN,P341_COD_USUARIO,P341_FAMILIA,P341_ARTICULO,P341_FEC_CREACION_INI,P341_FEC_CREACION_FIN,P341_TIP_FECHA_CREACION,P341_FEC_INI,P341_FEC_FIN,P341_TIP_FECHA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92049015808373638)
,p_event_id=>wwv_flow_imp.id(92047825474373626)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P341_FEC_INI := to_date( ''01/01/1900'', ''DD/MM/YYYY'' );',
'    :P341_FEC_FIN := to_date( ''31/12/2099'', ''DD/MM/YYYY'' );',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P341_COD_PROVEEDOR,P341_COD_CLIENTE,P341_COD_DISTRIBUIDOR,P341_COD_VENDEDOR,P341_COD_ORIGEN,P341_COD_USUARIO,P341_FAMILIA,P341_ARTICULO,P341_FEC_CREACION_INI,P341_FEC_CREACION_FIN,P341_TIP_FECHA_CREACION,P341_FEC_INI,P341_FEC_FIN,P341_TIP_FECHA'
,p_attribute_03=>'P341_FEC_INI,P341_FEC_FIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92048083179373628)
,p_name=>'DA_BOTON_EJECUTAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(92047014643373618)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92049169866373639)
,p_event_id=>wwv_flow_imp.id(92048083179373628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92048123179373629)
,p_event_id=>wwv_flow_imp.id(92048083179373628)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CATIPOT.PR_BUSCAR_OT (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                          PI_COD_CLIENTE => :P341_COD_CLIENTE,',
'                          PI_COD_PROVEEDOR => :P341_COD_PROVEEDOR,',
'                          PI_COD_DISTRIBUIDOR => :P341_COD_DISTRIBUIDOR,',
'                          PI_FEC_INI => :P341_FEC_INI,',
'                          PI_FEC_FIN => :P341_FEC_FIN,',
'                          PI_FEC_CREACION_INI => :P341_FEC_CREACION_INI,',
'                          PI_FEC_CREACION_FIN => :P341_FEC_CREACION_FIN,',
'                          PI_COD_ORIGEN => :P341_COD_ORIGEN,',
'                          PI_COD_USUARIO => :P341_COD_USUARIO,',
'                          PI_COD_FAMILIA => :P341_FAMILIA,             ',
'                          PI_COD_VENDEDOR => :P341_COD_VENDEDOR,',
'                          PI_COD_ARTICULO => :P341_ARTICULO);',
'',
'    CATIPOT.PR_CARGA_ESTADO (PI_COD_CLIENTE => :P341_COD_CLIENTE,',
'                             PI_COD_PROVEEDOR => :P341_COD_PROVEEDOR,',
'                             PI_COD_DISTRIBUIDOR => :P341_COD_DISTRIBUIDOR,',
'                             PI_FEC_INI => :P341_FEC_INI,',
'                             PI_FEC_FIN => :P341_FEC_FIN,',
'                             PI_FEC_CREACION_INI => :P341_FEC_CREACION_INI,',
'                             PI_FEC_CREACION_FIN => :P341_FEC_CREACION_FIN,',
'                             PI_COD_ORIGEN => :P341_COD_ORIGEN,',
'                             PI_COD_USUARIO => :P341_COD_USUARIO,',
'                             PI_COD_FAMILIA => :P341_FAMILIA,             ',
'                             PI_COD_VENDEDOR => :P341_COD_VENDEDOR,',
'                             PI_COD_ARTICULO => :P341_ARTICULO);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P341_COD_CLIENTE,P341_COD_PROVEEDOR,P341_COD_DISTRIBUIDOR,P341_FEC_INI,P341_FEC_FIN,P341_FEC_CREACION_INI,P341_FEC_CREACION_FIN,P341_COD_ORIGEN,P341_COD_USUARIO,P341_FAMILIA,P341_COD_VENDEDOR,P341_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92048229528373630)
,p_event_id=>wwv_flow_imp.id(92048083179373628)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(90902836578307144)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92049260868373640)
,p_event_id=>wwv_flow_imp.id(92048083179373628)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92049816823373646)
,p_name=>'DA_LLAMAR_CACONOT'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P341_SEQ_ID_DETALLE_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92971529527193101)
,p_event_id=>wwv_flow_imp.id(92049816823373646)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT c001           ',
'    INTO :P341_ESTADO_A_ENVIAR',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''ESTADOS_OT''',
'    AND SEQ_ID = :P341_SEQ_ID_DETALLE_ESTADO;  ',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P341_SEQ_ID_DETALLE_ESTADO'
,p_attribute_03=>'P341_ESTADO_A_ENVIAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92971645299193102)
,p_event_id=>wwv_flow_imp.id(92049816823373646)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    --APEX_DEBUG.ERROR(:P341_URL_348);',
'	SELECT APEX_PAGE.GET_URL (  p_page   => 348,',
'				                p_items  => ''P348_COD_CLIENTE,P348_COD_PROVEEDOR,P348_COD_DISTRIBUIDOR,P348_COD_USUARIO,P348_FAMILIA,P348_COD_ORIGEN,P348_P_TIPO,P348_COD_ARTICULO,P348_COD_VENDEDOR,P348_FEC_INI,P348_FEC_FIN,P348_FEC_CREACION_INI,P348_FEC_CREACION'
||'_FIN'', ',
'				                p_values =>  ''''||:P341_COD_CLIENTE||'',''||:P341_COD_PROVEEDOR||'',''||:P341_COD_DISTRIBUIDOR||'',''||:P341_COD_USUARIO||'',''||:P341_FAMILIA||'',''||:P341_COD_ORIGEN||'',''||:P341_ESTADO_A_ENVIAR||'',''||:P341_ARTICULO||'',''||:P341_COD_VENDEDOR'
||'||'',''||:P341_FEC_INI||'',''||:P341_FEC_FIN||'',''||:P341_FEC_CREACION_INI||'',''||:P341_FEC_CREACION_FIN||'''') f_url_1',
'		INTO :P341_URL_348',
'		FROM DUAL;        ',
'	 ',
'    --APEX_DEBUG.ERROR(:P341_URL_348);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P341_COD_CLIENTE,P341_COD_PROVEEDOR,P341_COD_DISTRIBUIDOR,P341_COD_USUARIO,P341_FAMILIA,P341_COD_ORIGEN,P341_ESTADO_A_ENVIAR,P341_ARTICULO,P341_COD_VENDEDOR,P341_FEC_INI,P341_FEC_FIN,P341_FEC_CREACION_INI,P341_FEC_CREACION_FIN'
,p_attribute_03=>'P341_URL_348'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92973355310193119)
,p_event_id=>wwv_flow_imp.id(92049816823373646)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P341_URL_348").getValue();',
'',
'apex.navigation.redirect(url);',
'/*apex.navigation.openInNewWindow(url, "_blank");*/'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(92048809756373636)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_DATOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(90902629186307142)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P341_COD_MODULO := ''CA'';',
'    :P341_FEC_INI := to_date( ''01/01/1900'', ''DD/MM/YYYY'' );',
'    :P341_FEC_FIN := to_date( ''31/12/2099'', ''DD/MM/YYYY'' );',
' ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(92047796900373625)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CREAR_COL_INICIAL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    CURSOR REG IS',
'        SELECT sum(CANT)cantidad, estado',
'        FROM (',
'                SELECT 0 CANT,''A PRESUPUESTAR'' ESTADO FROM DUAL UNION ALL',
'            	SELECT 0 CANT,''AUTORIZADO EN GARANTIA'' ESTADO FROM DUAL UNION ALL',
'            	SELECT 0 CANT,''CAMBIO'' ESTADO FROM DUAL UNION ALL',
'            	SELECT 0 CANT,''CARNEO'' ESTADO FROM DUAL UNION ALL',
'            	SELECT 0 CANT,''CERRADAS REPARADAS'' ESTADO FROM DUAL UNION ALL',
'            	SELECT 0 CANT,''CERRADAS SIN SOLUCION'' ESTADO FROM DUAL UNION ALL',
'            	SELECT 0 CANT,''ENTREGADO EN EL MES'' ESTADO FROM DUAL UNION ALL',
'            	SELECT 0 CANT,''ENTREGADO'' ESTADO FROM DUAL UNION ALL',
'            	SELECT 0 CANT,''ESPERA REPUESTO'' ESTADO FROM DUAL UNION ALL',
'            	SELECT 0 CANT,''NOTA DE CREDITO'' ESTADO FROM DUAL UNION ALL',
'            	SELECT 0 CANT,''PENDIENTE'' ESTADO FROM DUAL UNION ALL',
'            	SELECT 0 CANT,''PRESUPUESTADO'' ESTADO FROM DUAL UNION ALL',
'            	SELECT 0 CANT,''PRESUPUESTO APROBADO'' ESTADO FROM DUAL UNION ALL',
'            	SELECT 0 CANT,''PRESUPUESTO RECHAZADO'' ESTADO FROM DUAL UNION ALL',
'            	SELECT 0 CANT,''PRODUCTO SIN REPUESTOS'' ESTADO FROM DUAL UNION ALL',
'            	SELECT 0 CANT,''REPARACION INMEDIATA'' ESTADO FROM DUAL UNION ALL',
'            	SELECT 0 CANT,''RETIRADOS SIN FACTURAR'' ESTADO FROM DUAL UNION ALL ',
'            	SELECT 0 CANT,''VERIFICADO'' ESTADO FROM DUAL   ',
'             )  ',
'        GROUP BY estado',
'        ORDER BY estado;',
'BEGIN',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (P_COLLECTION_NAME => ''ESTADOS_OT'');    ',
'    FOR R in REG LOOP',
'        APEX_COLLECTION.ADD_MEMBER (P_COLLECTION_NAME => ''ESTADOS_OT'',',
'            p_c001 => R.estado,',
'            P_c002 => R.CANTidad);  	',
'    END LOOP;   ',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
