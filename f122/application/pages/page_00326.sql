prompt --application/pages/page_00326
begin
--   Manifest
--     PAGE: 00326
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
 p_id=>326
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CACONMAR'
,p_alias=>'CACONMAR'
,p_step_title=>'CACONMAR'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20230113175303'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79319441102732401)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79320149521732408)
,p_plug_name=>'CACONMAR'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79320251499732409)
,p_plug_name=>'PARAMETROS'
,p_parent_plug_id=>wwv_flow_imp.id(79320149521732408)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79320386851732410)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(79320149521732408)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.NRO_COMPROBANTE,',
'	m.cod_marca, ',
'	m.descripcion, ',
'	C.NRO_COMPROBANTE_REF',
'FROM CA_PEDIDO_REPUESTO_CAB C,',
'	CA_PEDIDO_REPUESTO_DET D, ',
'	ST_ARTICULOS S, ',
'	st_marcas m',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_EMPRESA=D.COD_EMPRESA',
'AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'and d.cod_articulo is not null',
'AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'AND NVL(C.ANULADO,''N'')<>''S''',
'and m.cod_marca(+) = s.cod_marca',
'and (c.nro_comprobante = :P326_NRO_COMPROBANTE or :P326_NRO_COMPROBANTE is null)',
'and (c.SER_comprobante = :P326_SER_COMPROBANTE or :P326_SER_COMPROBANTE is null)',
'and (s.cod_marca = :P326_COD_MARCA or :P326_COD_MARCA is null)',
'GROUP BY C.NRO_COMPROBANTE,m.cod_marca, m.descripcion,C.NRO_COMPROBANTE_REF',
'union all',
'SELECT C.NRO_COMPROBANTE,',
'	''SS'',',
'	''SIN MARCA'' descripcion,',
'	C.NRO_COMPROBANTE_REF',
'FROM CA_PEDIDO_REPUESTO_CAB C,',
'	CA_PEDIDO_REPUESTO_DET D,',
'	ST_ARTICULOS S',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_EMPRESA=D.COD_EMPRESA',
'AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'AND S.COD_EMPRESA(+)=D.COD_EMPRESA',
'AND S.COD_ARTICULO(+)=D.COD_ARTICULO',
'AND NVL(C.ANULADO,''N'')<>''S''',
'and s.cod_marca is  null',
'and (c.SER_comprobante = :P326_SER_COMPROBANTE or :P326_SER_COMPROBANTE is null)',
'and :P326_COD_MARCA is null',
'and (c.nro_comprobante = :P326_NRO_COMPROBANTE or :P326_NRO_COMPROBANTE is null)',
'GROUP BY C.NRO_COMPROBANTE, C.NRO_COMPROBANTE_REF;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P326_NRO_COMPROBANTE,P326_SER_COMPROBANTE,P326_COD_MARCA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE'
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
 p_id=>wwv_flow_imp.id(79320804348732415)
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
,p_internal_uid=>79320804348732415
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79320968687732416)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro Comprobante'
,p_column_link=>'f?p=&APP_ID.:328:&SESSION.::&DEBUG.::P328_NRO_COMPROBANTE:#NRO_COMPROBANTE#'
,p_column_linktext=>'#NRO_COMPROBANTE#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79321013669732417)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79321139557732418)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79321241825732419)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(79525173205898332)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'795252'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'NRO_COMPROBANTE:COD_MARCA:DESCRIPCION:NRO_COMPROBANTE_REF'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79320746570732414)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(79320251499732409)
,p_button_name=>'bt_Buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79319544354732402)
,p_name=>'P326_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79319441102732401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79319643291732403)
,p_name=>'P326_NOM_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79319441102732401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79319752731732404)
,p_name=>'P326_COD_SUCURSAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79319441102732401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79319855144732405)
,p_name=>'P326_NOM_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(79319441102732401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79319901036732406)
,p_name=>'P326_COD_USUARIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(79319441102732401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79320063071732407)
,p_name=>'P326_COD_MODULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(79319441102732401)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79320484642732411)
,p_name=>'P326_NRO_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79320251499732409)
,p_prompt=>'Nro Comprobante'
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
 p_id=>wwv_flow_imp.id(79320574288732412)
,p_name=>'P326_SER_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79320251499732409)
,p_prompt=>'Ser Comprobante'
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
 p_id=>wwv_flow_imp.id(79320673376732413)
,p_name=>'P326_COD_MARCA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79320251499732409)
,p_prompt=>'Marca'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79321371458732420)
,p_name=>'da_buscar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79320746570732414)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79321492824732421)
,p_event_id=>wwv_flow_imp.id(79321371458732420)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79320386851732410)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(78065750595098250)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P326_COD_USUARIO :=  nvl( :p_Cod_Usuario,user);',
':P326_COD_EMPRESA :=  nvl( :p_Cod_Empresa,''1'' );',
':P326_NOM_EMPRESA :=  nvl( :p_Nom_Empresa, null );',
':P326_COD_SUCURSAL :=  nvl(:p_Cod_Sucursal, ''01'' );',
':P326_NOM_SUCURSAL :=  nvl( :p_Nom_Sucursal,null );',
':P326_COD_MODULO :=  nvl( :p_Cod_Modulo,''CA'') ;',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
